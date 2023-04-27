import { describe, it, expect } from "vitest";
import {
  area,
  Circle,
  ErrorResponse,
  handleResponse,
  Rectangle,
  Square,
  SuccessResponse,
} from "./algebraic-datatypes";

describe("OPPGAVE 5.1", () => {
  it("should correctly calculate the area of a circle", () => {
    const circle: Circle = { kind: "circle", radius: 10 };
    expect(+area(circle).toFixed(2)).toEqual(314.16);
  });

  it("should correctly calculate the area of a square", () => {
    const square: Square = { kind: "square", size: 10 };
    expect(+area(square).toFixed(2)).toEqual(100);
  });

  it("should correctly calculate the area of a rectangle", () => {
    const rectangle: Rectangle = { kind: "rectangle", width: 10, height: 3 };
    expect(+area(rectangle).toFixed(2)).toEqual(30);
  });
});

describe("OPPGAVE 5.2", () => {
  it("should return a generic error message which includes ", () => {
    const errorResponse: ErrorResponse = {
      status: "error",
      message: "The joke API is down",
    };
    expect(handleResponse(errorResponse)).toEqual(
      "There was an error: The joke API is down"
    );
  });

  it("should return response.data when the response is successful", () => {
    const successResponse: SuccessResponse<string> = {
      status: "success",
      data: "When life gives you melons, you might be dyslexic",
    };
    expect(handleResponse(successResponse)).toEqual(
      "When life gives you melons, you might be dyslexic"
    );
  });
});
